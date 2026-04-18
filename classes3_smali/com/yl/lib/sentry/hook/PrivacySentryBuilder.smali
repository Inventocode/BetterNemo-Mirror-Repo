.class public final Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;
.super Ljava/lang/Object;
.source "PrivacySentryBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacySentryBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacySentryBuilder.kt\ncom/yl/lib/sentry/hook/PrivacySentryBuilder\n*L\n1#1,128:1\n*E\n"
.end annotation


# instance fields
.field private debug:Z

.field private enableFileResult:Z

.field private enableReadClipBoard:Z

.field private mPrinterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yl/lib/sentry/hook/printer/BasePrinter;",
            ">;"
        }
    .end annotation
.end field

.field private privacyResultCallBack:Lcom/yl/lib/sentry/hook/PrivacyResultCallBack;

.field private resultFileName:Ljava/lang/String;

.field private visitorModel:Z

.field private watchTime:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->debug:Z

    const-wide/32 v1, 0x2bf20

    .line 19
    iput-wide v1, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->watchTime:J

    .line 28
    iput-boolean v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->enableFileResult:Z

    .line 31
    iput-boolean v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->visitorModel:Z

    .line 34
    iput-boolean v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->enableReadClipBoard:Z

    .line 37
    new-instance v0, Lcom/yl/lib/sentry/hook/printer/DefaultLogPrint;

    invoke-direct {v0}, Lcom/yl/lib/sentry/hook/printer/DefaultLogPrint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->addPrinter(Lcom/yl/lib/sentry/hook/printer/BasePrinter;)Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    return-void
.end method


# virtual methods
.method public final addPrinter(Lcom/yl/lib/sentry/hook/printer/BasePrinter;)Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;
    .registers 3

    const-string v0, "basePrinter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->mPrinterList:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->mPrinterList:Ljava/util/ArrayList;

    .line 68
    :cond_10
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->mPrinterList:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    return-object p0
.end method

.method public final addPrinter(Ljava/util/List;)Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/yl/lib/sentry/hook/printer/BasePrinter;",
            ">;)",
            "Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;"
        }
    .end annotation

    const-string v0, "basePrinter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->mPrinterList:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->mPrinterList:Ljava/util/ArrayList;

    .line 76
    :cond_10
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->mPrinterList:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_17
    return-object p0
.end method

.method public final configResultFileName(Ljava/lang/String;)Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;
    .registers 3

    const-string v0, "resultFileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->resultFileName:Ljava/lang/String;

    return-object p0
.end method

.method public final configVisitorModel(Z)Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;
    .registers 2

    .line 101
    iput-boolean p1, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->visitorModel:Z

    return-object p0
.end method

.method public final enableFileResult(Z)Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;
    .registers 2

    .line 110
    iput-boolean p1, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->enableFileResult:Z

    return-object p0
.end method

.method public final enableReadClipBoard(Z)Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;
    .registers 2

    .line 119
    iput-boolean p1, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->enableReadClipBoard:Z

    return-object p0
.end method

.method public final getDebug()Z
    .registers 2

    .line 13
    iget-boolean v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->debug:Z

    return v0
.end method

.method public final getPrinterList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/yl/lib/sentry/hook/printer/BasePrinter;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->mPrinterList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getResultCallBack()Lcom/yl/lib/sentry/hook/PrivacyResultCallBack;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->privacyResultCallBack:Lcom/yl/lib/sentry/hook/PrivacyResultCallBack;

    return-object v0
.end method

.method public final getResultFileName()Ljava/lang/String;
    .registers 4

    .line 54
    sget-object v0, Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;->INSTANCE:Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;

    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;->isMainProcess(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 55
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->resultFileName:Ljava/lang/String;

    goto :goto_3f

    .line 57
    :cond_11
    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getContext()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 58
    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getContext()Landroid/app/Application;

    move-result-object v1

    if-nez v1, :cond_20

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_20
    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const-string v0, ""

    .line 60
    :goto_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->resultFileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3f
    return-object v0
.end method

.method public final getWatchTime()Ljava/lang/Long;
    .registers 3

    .line 45
    iget-wide v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->watchTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final isEnableFileResult()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->enableFileResult:Z

    return v0
.end method

.method public final isEnableReadClipBoard()Z
    .registers 2

    .line 124
    iget-boolean v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->enableReadClipBoard:Z

    return v0
.end method

.method public final isVisitorModel()Z
    .registers 2

    .line 106
    iget-boolean v0, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->visitorModel:Z

    return v0
.end method

.method public final syncDebug(Z)Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;
    .registers 2

    .line 81
    iput-boolean p1, p0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->debug:Z

    return-object p0
.end method
