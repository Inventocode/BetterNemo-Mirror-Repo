.class public final Lcom/nemo/commonui/NemoUIConfigManager;
.super Ljava/lang/Object;
.source "NemoUIConfigManager.kt"


# static fields
.field public static final INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

.field private static hasEyeshieldView:Z

.field private static isOpenEyeshieldMode:Z

.field private static locale:Ljava/util/Locale;

.field private static lowAnimationLevel:Z

.field private static showMidiHelp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-direct {v0}, Lcom/nemo/commonui/NemoUIConfigManager;-><init>()V

    sput-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    const/4 v0, 0x1

    .line 15
    sput-boolean v0, Lcom/nemo/commonui/NemoUIConfigManager;->showMidiHelp:Z

    .line 25
    sput-boolean v0, Lcom/nemo/commonui/NemoUIConfigManager;->hasEyeshieldView:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHasEyeshieldView()Z
    .registers 2

    .line 25
    sget-boolean v0, Lcom/nemo/commonui/NemoUIConfigManager;->hasEyeshieldView:Z

    return v0
.end method

.method public final getLocale()Ljava/util/Locale;
    .registers 2

    .line 13
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public final getLowAnimationLevel()Z
    .registers 2

    .line 14
    sget-boolean v0, Lcom/nemo/commonui/NemoUIConfigManager;->lowAnimationLevel:Z

    return v0
.end method

.method public final getShowMidiHelp()Z
    .registers 2

    .line 15
    sget-boolean v0, Lcom/nemo/commonui/NemoUIConfigManager;->showMidiHelp:Z

    return v0
.end method

.method public final isOpenEyeshieldMode()Z
    .registers 2

    .line 30
    sget-boolean v0, Lcom/nemo/commonui/NemoUIConfigManager;->isOpenEyeshieldMode:Z

    return v0
.end method

.method public final setLowAnimationLevel(Z)V
    .registers 2

    .line 14
    sput-boolean p1, Lcom/nemo/commonui/NemoUIConfigManager;->lowAnimationLevel:Z

    return-void
.end method

.method public final setOpenEyeshieldMode(Z)V
    .registers 2

    .line 30
    sput-boolean p1, Lcom/nemo/commonui/NemoUIConfigManager;->isOpenEyeshieldMode:Z

    return-void
.end method
