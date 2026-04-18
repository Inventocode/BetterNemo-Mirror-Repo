.class public final Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;
.super Ljava/lang/Object;
.source "PrivacyFunBean.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyFunBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyFunBean.kt\ncom/yl/lib/sentry/hook/printer/PrivacyFunBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n318#2,7:67\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyFunBean.kt\ncom/yl/lib/sentry/hook/printer/PrivacyFunBean\n*L\n60#1,7:67\n*E\n"
.end annotation


# instance fields
.field private appendTime:Ljava/lang/String;

.field private count:I

.field private funAlias:Ljava/lang/String;

.field private funName:Ljava/lang/String;

.field private stackTraces:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyUtil$Util;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "MM-dd HH:mm:ss.SSS"

    invoke-virtual {v0, v1, v2, v3}, Lcom/yl/lib/sentry/hook/util/PrivacyUtil$Util;->formatTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->appendTime:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->funAlias:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->funName:Ljava/lang/String;

    .line 40
    invoke-direct {p0, p3}, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->trimTrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->stackTraces:Ljava/lang/String;

    .line 41
    iput p4, p0, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->count:I

    return-void
.end method

.method private final trimTrace(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const-string v0, ""

    if-eqz p1, :cond_67

    .line 57
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_67

    :cond_b
    const-string v0, "\n"

    .line 59
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    .line 319
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 69
    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x2

    const-string v7, "java.lang.reflect.Proxy.invoke"

    .line 60
    invoke-static {v5, v7, v3, v6, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    goto :goto_3d

    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_3c
    const/4 v4, -0x1

    .line 73
    :goto_3d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_43

    :cond_42
    move-object v2, v1

    .line 60
    :goto_43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_4a

    return-object p1

    :cond_4a
    if-eqz v0, :cond_66

    add-int/lit8 v2, v2, 0x1

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_66

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const-string v4, "\n"

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_66
    return-object v1

    :cond_67
    :goto_67
    return-object v0
.end method


# virtual methods
.method public final addSelf()V
    .registers 2

    .line 45
    iget v0, p0, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->count:I

    return-void
.end method

.method public final buildStackTrace()Ljava/lang/String;
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->stackTraces:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_19

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_14

    goto :goto_19

    .line 52
    :cond_14
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->stackTraces:Ljava/lang/String;

    if-eqz v0, :cond_19

    move-object v1, v0

    :cond_19
    :goto_19
    return-object v1
.end method

.method public final getAppendTime()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->appendTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getCount()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->count:I

    return v0
.end method

.method public final getFunAlias()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->funAlias:Ljava/lang/String;

    return-object v0
.end method

.method public final getFunName()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;->funName:Ljava/lang/String;

    return-object v0
.end method
