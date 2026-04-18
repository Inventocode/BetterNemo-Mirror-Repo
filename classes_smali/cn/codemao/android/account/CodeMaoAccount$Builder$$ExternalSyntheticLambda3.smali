.class public final synthetic Lcn/codemao/android/account/CodeMaoAccount$Builder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# static fields
.field public static final synthetic INSTANCE:Lcn/codemao/android/account/CodeMaoAccount$Builder$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcn/codemao/android/account/CodeMaoAccount$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcn/codemao/android/account/CodeMaoAccount$Builder$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcn/codemao/android/account/CodeMaoAccount$Builder$$ExternalSyntheticLambda3;->INSTANCE:Lcn/codemao/android/account/CodeMaoAccount$Builder$$ExternalSyntheticLambda3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcn/codemao/android/account/bean/UserInfoVO;

    invoke-static {p1}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->$r8$lambda$YS2r5xxke6bt5PD9YyH_YHlGlS4(Lcn/codemao/android/account/bean/UserInfoVO;)V

    return-void
.end method
