.class public final synthetic Lcn/codemao/android/account/util/WechatManager$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# instance fields
.field public final synthetic f$0:Lcn/codemao/android/account/util/WechatManager$1;


# direct methods
.method public synthetic constructor <init>(Lcn/codemao/android/account/util/WechatManager$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/account/util/WechatManager$1$$ExternalSyntheticLambda2;->f$0:Lcn/codemao/android/account/util/WechatManager$1;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager$1$$ExternalSyntheticLambda2;->f$0:Lcn/codemao/android/account/util/WechatManager$1;

    check-cast p1, Lcn/codemao/android/account/bean/WechatLoginResultVO;

    invoke-static {v0, p1}, Lcn/codemao/android/account/util/WechatManager$1;->$r8$lambda$FUGxcq5s3hS9VRieHiONKpC9u00(Lcn/codemao/android/account/util/WechatManager$1;Lcn/codemao/android/account/bean/WechatLoginResultVO;)V

    return-void
.end method
