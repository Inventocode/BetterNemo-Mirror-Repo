.class public final Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;
.super Ljava/lang/Object;
.source "PrivacyProxyUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyProxyUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyProxyUtil.kt\ncom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n1799#2,2:49\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyProxyUtil.kt\ncom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util\n*L\n24#1,2:49\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    invoke-direct {v0}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;-><init>()V

    sput-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V
    .registers 15

    and-int/lit8 p7, p6, 0x2

    const-string v0, ""

    if-eqz p7, :cond_8

    move-object v3, v0

    goto :goto_9

    :cond_8
    move-object v3, p2

    :goto_9
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_f

    move-object v4, v0

    goto :goto_10

    :cond_f
    move-object v4, p3

    :goto_10
    and-int/lit8 p2, p6, 0x8

    const/4 p3, 0x0

    if-eqz p2, :cond_17

    const/4 v5, 0x0

    goto :goto_18

    :cond_17
    move v5, p4

    :goto_18
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_1e

    const/4 v6, 0x0

    goto :goto_1f

    :cond_1e
    move v6, p5

    :goto_1f
    move-object v1, p0

    move-object v2, p1

    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final checkPermission(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getContext()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_2c

    .line 43
    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getContext()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    goto :goto_24

    :cond_22
    const-string v0, ""

    .line 41
    :goto_24
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    return p1
.end method

.method public final doFilePrinter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 12

    const-string v0, "funName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodDocumentDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_9d

    .line 19
    sget-object p4, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {p4}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    if-ne v0, v1, :cond_1d

    goto/16 :goto_9d

    .line 24
    :cond_1d
    invoke-virtual {p4}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object p4

    if-eqz p4, :cond_9c

    invoke-virtual {p4}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->getPrinterList()Ljava/util/ArrayList;

    move-result-object p4

    if-eqz p4, :cond_9c

    .line 49
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2d
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yl/lib/sentry/hook/printer/BasePrinter;

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-\n线程名: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    if-eqz p5, :cond_66

    const-string v5, "命中缓存--"

    goto :goto_67

    :cond_66
    move-object v5, v4

    :goto_67
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_8b

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_77

    const/4 v5, 0x1

    goto :goto_78

    :cond_77
    const/4 v5, 0x0

    :goto_78
    if-ne v5, v1, :cond_8b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--参数: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_8b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 28
    sget-object v4, Lcom/yl/lib/sentry/hook/util/PrivacyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyUtil$Util;

    invoke-virtual {v4}, Lcom/yl/lib/sentry/hook/util/PrivacyUtil$Util;->getStackTrace()Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-virtual {v0, v2, v3, v4}, Lcom/yl/lib/sentry/hook/printer/BasePrinter;->filePrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_9c
    return-void

    .line 20
    :cond_9d
    :goto_9d
    sget-object p3, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "disable print file: funName is "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " methodDocumentDesc is "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",isVisitorModel=true"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->e(Ljava/lang/String;)V

    return-void
.end method
