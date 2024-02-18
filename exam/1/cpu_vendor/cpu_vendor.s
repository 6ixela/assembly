.global get_cpu_vendor_id

get_cpu_vendor_id:
	movl $4, %eax
	cpuid
	ret
