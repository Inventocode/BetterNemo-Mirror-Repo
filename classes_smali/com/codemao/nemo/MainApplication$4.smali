.class Lcom/codemao/nemo/MainApplication$4;
.super Ljava/lang/Object;
.source "MainApplication.java"

# interfaces
.implements Lcom/codemao/nemo/util/CrashUtil$ExceptionCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/MainApplication;->initCrashUtil(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/MainApplication;)V
    .registers 2

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException()V
    .registers 2

    const-string v0, "2"

    .line 351
    invoke-static {v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendQuitEvent(Ljava/lang/String;)V

    return-void
.end method
