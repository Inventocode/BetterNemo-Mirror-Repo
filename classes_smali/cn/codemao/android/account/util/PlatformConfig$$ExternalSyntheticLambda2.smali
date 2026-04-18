.class public final synthetic Lcn/codemao/android/account/util/PlatformConfig$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# static fields
.field public static final synthetic INSTANCE:Lcn/codemao/android/account/util/PlatformConfig$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcn/codemao/android/account/util/PlatformConfig$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcn/codemao/android/account/util/PlatformConfig$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcn/codemao/android/account/util/PlatformConfig$$ExternalSyntheticLambda2;->INSTANCE:Lcn/codemao/android/account/util/PlatformConfig$$ExternalSyntheticLambda2;

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

    check-cast p1, Lcn/codemao/android/account/bean/TokenRenewalVO;

    invoke-static {p1}, Lcn/codemao/android/account/util/PlatformConfig;->$r8$lambda$8qGJUgh9a_OJvr2rv2M7-QFZDds(Lcn/codemao/android/account/bean/TokenRenewalVO;)V

    return-void
.end method
