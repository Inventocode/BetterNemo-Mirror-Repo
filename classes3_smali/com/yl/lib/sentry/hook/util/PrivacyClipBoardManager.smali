.class public final Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager;
.super Ljava/lang/Object;
.source "PrivacyClipBoardManager.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;

.field private static bReadClipboardEnable:Ljava/lang/Boolean;

.field private static final diskCache$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager;->Companion:Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;

    .line 16
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion$diskCache$2;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion$diskCache$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager;->diskCache$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBReadClipboardEnable$cp()Ljava/lang/Boolean;
    .registers 1

    .line 12
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager;->bReadClipboardEnable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic access$getDiskCache$cp()Lkotlin/Lazy;
    .registers 1

    .line 12
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager;->diskCache$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$setBReadClipboardEnable$cp(Ljava/lang/Boolean;)V
    .registers 1

    .line 12
    sput-object p0, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager;->bReadClipboardEnable:Ljava/lang/Boolean;

    return-void
.end method
