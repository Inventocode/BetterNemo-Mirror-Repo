.class public abstract Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;
.super Lcom/yl/lib/sentry/hook/printer/BasePrinter;
.source "BaseFilePrinter.kt"


# instance fields
.field private final printCallBack:Lcom/yl/lib/sentry/hook/printer/PrintCallBack;

.field private final resultFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yl/lib/sentry/hook/printer/PrintCallBack;Ljava/lang/String;)V
    .registers 4

    const-string v0, "printCallBack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultFileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/yl/lib/sentry/hook/printer/BasePrinter;-><init>()V

    iput-object p1, p0, Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;->printCallBack:Lcom/yl/lib/sentry/hook/printer/PrintCallBack;

    .line 16
    iput-object p2, p0, Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;->resultFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract appendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public final filePrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "funName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "funAlias"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;->printCallBack:Lcom/yl/lib/sentry/hook/printer/PrintCallBack;

    invoke-interface {v0}, Lcom/yl/lib/sentry/hook/printer/PrintCallBack;->checkPrivacyShow()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 21
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    const-string v1, "check!!! 还未展示隐私协议，Illegal print"

    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->e(Ljava/lang/String;)V

    .line 23
    :cond_1e
    invoke-virtual {p0, p1, p2, p3}, Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;->appendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract flushToFile()V
.end method

.method public final getResultFileName()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;->resultFileName:Ljava/lang/String;

    return-object v0
.end method
