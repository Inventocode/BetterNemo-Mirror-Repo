.class final Lcom/ainirobot/oauth/connect/CommonParamUtil$1;
.super Lcom/ainirobot/oauth/utils/Singleton;
.source "CommonParamUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ainirobot/oauth/connect/CommonParamUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ainirobot/oauth/utils/Singleton<",
        "Lcom/ainirobot/oauth/connect/CommonParamUtil;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/ainirobot/oauth/utils/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/ainirobot/oauth/connect/CommonParamUtil;
    .registers 3

    .line 39
    new-instance v0, Lcom/ainirobot/oauth/connect/CommonParamUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ainirobot/oauth/connect/CommonParamUtil;-><init>(Lcom/ainirobot/oauth/connect/CommonParamUtil$1;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lcom/ainirobot/oauth/connect/CommonParamUtil$1;->create()Lcom/ainirobot/oauth/connect/CommonParamUtil;

    move-result-object v0

    return-object v0
.end method
