.class public final Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy$defaultFilePrinter$1;
.super Ljava/lang/Object;
.source "PrivacySentry.kt"

# interfaces
.implements Lcom/yl/lib/sentry/hook/printer/PrintCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->defaultFilePrinter(Landroid/content/Context;Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPrivacyShow()Z
    .registers 2

    .line 149
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->hasShowPrivacy()Z

    move-result v0

    return v0
.end method
