#import <substrate.h>

Boolean (*old_MGGetBoolAnswer)(CFStringRef);
Boolean replaced_MGGetBoolAnswer(CFStringRef string)
{
    if (CFEqual(string, CFSTR("nVh/gwNpy7Jv1NOk00CMrw"))) {
			return true;
	}
	return old_MGGetBoolAnswer(string);
}


%ctor
{
	MSHookFunction((void *)(dlsym(RTLD_DEFAULT, "MGGetBoolAnswer")), (void *)replaced_MGGetBoolAnswer, (void **)&old_MGGetBoolAnswer);
}