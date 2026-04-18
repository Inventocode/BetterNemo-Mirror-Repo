.class Lcom/codemao/nemo/MainApplication$1;
.super Ljava/lang/Object;
.source "MainApplication.java"

# interfaces
.implements Lcom/codemao/creativecenter/CreativeCenterUtils$ErrorLogCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/MainApplication;->initAfterAgreement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/MainApplication;)V
    .registers 2

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 270
    invoke-static {p1, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 275
    invoke-static {p1, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
