MAX := xxxxxxxxxxxxxxx

ITER_NUMS = $(if $1,$(call ITER_NUMS,$(patsubst %x,%,$1)) $1,)
ALL_NUMS := $(call ITER_NUMS,$(MAX))

CONDITIONS = $(if $(findstring $2,$1),\
				$(call CONDITIONS,$(patsubst %$2,%,$1),$2,$3),\
				$(if $1,,$3))

FIZZ = $(call CONDITIONS,$1,xxx,Fizz)
BUZZ = $(call CONDITIONS,$1,xxxxx,Buzz)
NUM  = $(words $(subst x,x ,$1))

FIZZ_BUZZ = $(or $(strip $(call FIZZ,$1) $(call BUZZ,$1)),$(call NUM,$1))

all: fizzbuzz-$(MAX)x

define RUN
fizzbuzz-$(1)x: fizzbuzz-$(1)
	@echo $(call FIZZ_BUZZ,$1)

endef

$(eval $(foreach n,$(ALL_NUMS),$(call RUN,$n)))

fizzbuzz-x:
