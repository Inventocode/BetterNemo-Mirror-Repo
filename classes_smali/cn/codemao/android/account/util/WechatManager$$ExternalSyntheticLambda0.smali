.class public final synthetic Lcn/codemao/android/account/util/WechatManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetFailResultListener;


# instance fields
.field public final synthetic f$0:Lcn/codemao/android/account/listener/WechatCodeListener;


# direct methods
.method public synthetic constructor <init>(Lcn/codemao/android/account/listener/WechatCodeListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/account/util/WechatManager$$ExternalSyntheticLambda0;->f$0:Lcn/codemao/android/account/listener/WechatCodeListener;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager$$ExternalSyntheticLambda0;->f$0:Lcn/codemao/android/account/listener/WechatCodeListener;

    invoke-static {v0, p1, p2}, Lcn/codemao/android/account/util/WechatManager;->$r8$lambda$XTZG1roiELJlON-gxAO2rfo0OtQ(Lcn/codemao/android/account/listener/WechatCodeListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
