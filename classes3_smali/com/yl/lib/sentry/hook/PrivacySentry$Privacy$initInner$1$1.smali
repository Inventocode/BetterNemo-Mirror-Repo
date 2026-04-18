.class final Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy$initInner$1$1;
.super Ljava/lang/Object;
.source "PrivacySentry.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->initInner(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy$initInner$1$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy$initInner$1$1;

    invoke-direct {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy$initInner$1$1;-><init>()V

    sput-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy$initInner$1$1;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy$initInner$1$1;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 57
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->stop()V

    return-void
.end method
