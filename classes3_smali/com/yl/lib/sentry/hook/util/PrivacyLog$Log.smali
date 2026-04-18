.class public final Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;
.super Ljava/lang/Object;
.source "PrivacyLog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yl/lib/sentry/hook/util/PrivacyLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Log"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;)V
    .registers 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "PrivacyOfficer"

    .line 16
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .registers 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "PrivacyOfficer"

    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void
.end method
