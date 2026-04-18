.class public final Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;
.super Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;
.source "DefaultFilePrint.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultFilePrint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultFilePrint.kt\ncom/yl/lib/sentry/hook/printer/DefaultFilePrint\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,148:1\n714#2:149\n805#2,2:150\n1799#2,2:152\n95#3:154\n122#3,3:155\n*E\n*S KotlinDebug\n*F\n+ 1 DefaultFilePrint.kt\ncom/yl/lib/sentry/hook/printer/DefaultFilePrint\n*L\n92#1:149\n92#1,2:150\n92#1,2:152\n100#1:154\n100#1,3:155\n*E\n"
.end annotation


# instance fields
.field private volatile hasInit:Z

.field private final sheetPrivacyCount:I

.field private final sheetPrivacyLegal:I

.field private final titlePrivacyCount:[Ljava/lang/String;

.field private final titlePrivacyLegal:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yl/lib/sentry/hook/printer/PrintCallBack;Ljava/lang/Long;)V
    .registers 11

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "printCallBack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p2, p1}, Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;-><init>(Lcom/yl/lib/sentry/hook/printer/PrintCallBack;Ljava/lang/String;)V

    const-string p2, "调用时间(倒序排序)"

    const-string v0, "别名"

    const-string v1, "函数名"

    const-string v2, "调用堆栈"

    .line 21
    filled-new-array {p2, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;->titlePrivacyLegal:[Ljava/lang/String;

    const-string p2, "调用次数"

    .line 25
    filled-new-array {v0, v1, v2, p2}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;->titlePrivacyCount:[Ljava/lang/String;

    const/4 p2, 0x1

    .line 26
    iput p2, p0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;->sheetPrivacyCount:I

    .line 36
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->i(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isEnableFileResult()Z

    move-result v0

    if-ne v0, p2, :cond_5c

    .line 38
    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$1;

    const/4 p2, 0x0

    invoke-direct {v4, p1, p2}, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 43
    :cond_5c
    new-instance p1, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;

    if-eqz p3, :cond_65

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_68

    :cond_65
    const-wide/32 p2, 0x36ee80

    :goto_68
    new-instance v0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$2;

    invoke-direct {v0, p0}, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$2;-><init>(Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;)V

    invoke-direct {p1, p2, p3, v0}, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;-><init>(JLjava/lang/Runnable;)V

    return-void
.end method

.method private final flushSheetPrivacyCount(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;",
            ">;)V"
        }
    .end annotation

    .line 90
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    const-string v2, "call flushSheetPrivacyCount"

    invoke-virtual {v1, v2}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->e(Ljava/lang/String;)V

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;

    .line 92
    invoke-virtual {v3}, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->getFunName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "点击隐私协议确认"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_15

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 152
    :cond_37
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3b
    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;

    .line 93
    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->buildStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_59

    .line 94
    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->buildStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 96
    :cond_59
    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->buildStackTrace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->addSelf()V

    goto :goto_3b

    .line 99
    :cond_69
    sget-object p1, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->INSTANCE:Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 101
    :cond_92
    invoke-virtual {p0}, Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;->getResultFileName()Ljava/lang/String;

    move-result-object v0

    .line 102
    iget v2, p0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;->sheetPrivacyCount:I

    new-instance v3, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$flushSheetPrivacyCount$4;

    invoke-direct {v3}, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$flushSheetPrivacyCount$4;-><init>()V

    .line 99
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->writeObjListToExcel(Ljava/util/List;Ljava/lang/String;ILcom/yl/lib/sentry/hook/excel/ExcelBuildDataListener;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a0} :catch_a1

    goto :goto_a5

    :catch_a1
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a5
    return-void
.end method

.method private final flushSheetPrivacyLegal(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;",
            ">;)V"
        }
    .end annotation

    .line 124
    :try_start_0
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    const-string v1, "call flushSheetPrivacyLegal"

    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->e(Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->INSTANCE:Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;

    .line 127
    invoke-virtual {p0}, Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;->getResultFileName()Ljava/lang/String;

    move-result-object v1

    .line 128
    iget v2, p0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;->sheetPrivacyLegal:I

    .line 129
    new-instance v3, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$flushSheetPrivacyLegal$1;

    invoke-direct {v3}, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint$flushSheetPrivacyLegal$1;-><init>()V

    .line 125
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->writeObjListToExcel(Ljava/util/List;Ljava/lang/String;ILcom/yl/lib/sentry/hook/excel/ExcelBuildDataListener;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1c
    return-void
.end method


# virtual methods
.method public appendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "funName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "funAlias"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;

    new-instance v1, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;

    const/4 v2, 0x1

    invoke-direct {v1, p2, p1, p3, v2}, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;->addData(Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;)V

    return-void
.end method

.method public flushToFile()V
    .registers 10

    .line 54
    invoke-virtual {p0}, Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;->getResultFileName()Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    return-void

    .line 57
    :cond_c
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isEnableFileResult()Z

    move-result v2

    if-nez v2, :cond_22

    .line 58
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    const-string v1, "disable print file"

    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->e(Ljava/lang/String;)V

    return-void

    .line 61
    :cond_22
    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->isFilePrintFinish()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 62
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    const-string v1, "print file finished,so fail to print file"

    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->e(Ljava/lang/String;)V

    return-void

    .line 66
    :cond_30
    iget-boolean v1, p0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;->hasInit:Z

    if-nez v1, :cond_72

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, p0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;->hasInit:Z

    .line 68
    sget-object v2, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->INSTANCE:Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;

    .line 69
    invoke-virtual {p0}, Lcom/yl/lib/sentry/hook/printer/BaseFilePrinter;->getResultFileName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "隐私合规"

    const-string v5, "调用次数"

    .line 70
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [[Ljava/lang/String;

    .line 71
    iget-object v7, p0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;->titlePrivacyLegal:[Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;->titlePrivacyCount:[Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Integer;

    .line 72
    iget v7, p0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;->sheetPrivacyLegal:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    iget v7, p0, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;->sheetPrivacyCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 68
    invoke-virtual {v2, v3, v4, v6, v1}, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->initExcel(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 75
    :cond_72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;->getFunBeanList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    invoke-direct {p0, v1}, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;->flushSheetPrivacyLegal(Ljava/util/ArrayList;)V

    .line 78
    invoke-direct {p0, v1}, Lcom/yl/lib/sentry/hook/printer/DefaultFilePrint;->flushSheetPrivacyCount(Ljava/util/ArrayList;)V

    .line 79
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
