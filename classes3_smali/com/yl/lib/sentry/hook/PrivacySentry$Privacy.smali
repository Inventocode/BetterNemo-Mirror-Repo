.class public final Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;
.super Ljava/lang/Object;
.source "PrivacySentry.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacySentry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacySentry.kt\ncom/yl/lib/sentry/hook/PrivacySentry$Privacy\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,169:1\n748#2,11:170\n1799#2,2:181\n748#2,11:183\n1799#2,2:194\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacySentry.kt\ncom/yl/lib/sentry/hook/PrivacySentry$Privacy\n*L\n72#1,11:170\n72#1,2:181\n90#1,11:183\n91#1,2:194\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

.field private static final bFilePrintFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final bInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static bShowPrivacy:Z

.field private static ctx:Landroid/app/Application;

.field private static mBuilder:Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-direct {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;-><init>()V

    sput-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    .line 22
    new-instance v0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    invoke-direct {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;-><init>()V

    sput-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->mBuilder:Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->bInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->bFilePrintFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final defaultFilePrinter(Landroid/content/Context;Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;",
            ")",
            "Ljava/util/List<",
            "Lcom/yl/lib/sentry/hook/printer/BasePrinter;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_9

    .line 138
    invoke-virtual {p2}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->getResultFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_27

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "privacy_result_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    sget-object v2, Lcom/yl/lib/sentry/hook/util/PrivacyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyUtil$Util;

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 139
    invoke-static/range {v2 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyUtil$Util;->formatTime$default(Lcom/yl/lib/sentry/hook/util/PrivacyUtil$Util;JLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_27
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "print fileName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->i(Ljava/lang/String;)V

    .line 145
    new-instance v1, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "privacy"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".xls"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    new-instance v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy$defaultFilePrinter$1;

    invoke-direct {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy$defaultFilePrinter$1;-><init>()V

    if-eqz p2, :cond_70

    .line 156
    invoke-virtual {p2}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->getWatchTime()Ljava/lang/Long;

    move-result-object v3

    .line 145
    :cond_70
    invoke-direct {v1, p1, v0, v3}, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;-><init>(Ljava/lang/String;Lcom/yl/lib/sentry/hook/printer/PrintCallBack;Ljava/lang/Long;)V

    .line 144
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final initInner(Landroid/app/Application;)V
    .registers 7

    .line 49
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    const-string v1, "call initInner"

    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->i(Ljava/lang/String;)V

    .line 50
    sput-object p1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->ctx:Landroid/app/Application;

    .line 51
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->mBuilder:Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isEnableFileResult()Z

    move-result v1

    if-eq v1, v2, :cond_1e

    :cond_14
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->mBuilder:Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    if-eqz v1, :cond_63

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->getDebug()Z

    move-result v1

    if-ne v1, v2, :cond_63

    .line 52
    :cond_1e
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->mBuilder:Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isEnableFileResult()Z

    move-result v1

    if-ne v1, v2, :cond_58

    .line 53
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->mBuilder:Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->getWatchTime()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delay stop watch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->i(Ljava/lang/String;)V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    sget-object v3, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy$initInner$1$1;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy$initInner$1$1;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    :cond_58
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->mBuilder:Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    if-eqz v0, :cond_63

    invoke-direct {p0, p1, v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->defaultFilePrinter(Landroid/content/Context;Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->addPrinter(Ljava/util/List;)Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    :cond_63
    return-void
.end method


# virtual methods
.method public final closeVisitorModel()V
    .registers 3

    .line 122
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->mBuilder:Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->configVisitorModel(Z)Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    :cond_8
    return-void
.end method

.method public final getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;
    .registers 2

    .line 107
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->mBuilder:Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return-object v0
.end method

.method public final getContext()Landroid/app/Application;
    .registers 2

    .line 103
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->ctx:Landroid/app/Application;

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return-object v0
.end method

.method public final hasShowPrivacy()Z
    .registers 2

    .line 95
    sget-boolean v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->bShowPrivacy:Z

    return v0
.end method

.method public final init(Landroid/app/Application;Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;)V
    .registers 6

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->bInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 43
    sput-object p2, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->mBuilder:Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    .line 44
    invoke-direct {p0, p1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->initInner(Landroid/app/Application;)V

    :cond_14
    return-void
.end method

.method public final isDebug()Z
    .registers 2

    .line 99
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->mBuilder:Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->getDebug()Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public final isFilePrintFinish()Z
    .registers 2

    .line 115
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->bFilePrintFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final stop()V
    .registers 5

    .line 69
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->bFilePrintFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 70
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    const-string v1, "call stopWatch"

    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->i(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->mBuilder:Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->getPrinterList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 748
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 757
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;

    if-eqz v3, :cond_27

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 181
    :cond_39
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3d
    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;

    .line 74
    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;->flushToFile()V

    .line 76
    sget-object v2, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->mBuilder:Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->getResultCallBack()Lcom/yl/lib/sentry/hook/PrivacyResultCallBack;

    move-result-object v2

    if-eqz v2, :cond_3d

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;->getResultFileName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/yl/lib/sentry/hook/PrivacyResultCallBack;->onResultCallBack(Ljava/lang/String;)V

    goto :goto_3d

    :cond_5e
    return-void
.end method

.method public final updatePrivacyShow()V
    .registers 5

    .line 85
    sget-boolean v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->bShowPrivacy:Z

    if-eqz v0, :cond_5

    return-void

    .line 88
    :cond_5
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    const-string v1, "call updatePrivacyShow"

    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 89
    sput-boolean v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->bShowPrivacy:Z

    .line 91
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->mBuilder:Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    if-eqz v0, :cond_4a

    .line 90
    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->getPrinterList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 748
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 757
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;

    if-eqz v3, :cond_22

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 194
    :cond_34
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;

    const-string v2, "点击隐私协议确认"

    .line 91
    invoke-virtual {v1, v2, v2, v2}, Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;->appendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_4a
    return-void
.end method
