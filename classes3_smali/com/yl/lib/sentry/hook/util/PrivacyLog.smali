.class public final Lcom/yl/lib/sentry/hook/util/PrivacyLog;
.super Ljava/lang/Object;
.source "PrivacyLog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;
    }
.end annotation


# static fields
.field public static final Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    return-void
.end method
