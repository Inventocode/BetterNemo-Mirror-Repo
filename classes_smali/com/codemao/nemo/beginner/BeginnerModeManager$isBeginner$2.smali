.class final Lcom/codemao/nemo/beginner/BeginnerModeManager$isBeginner$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BeginnerModeManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/beginner/BeginnerModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/beginner/BeginnerModeManager$isBeginner$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/beginner/BeginnerModeManager$isBeginner$2;

    invoke-direct {v0}, Lcom/codemao/nemo/beginner/BeginnerModeManager$isBeginner$2;-><init>()V

    sput-object v0, Lcom/codemao/nemo/beginner/BeginnerModeManager$isBeginner$2;->INSTANCE:Lcom/codemao/nemo/beginner/BeginnerModeManager$isBeginner$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .registers 2

    .line 50
    sget-object v0, Lcom/codemao/nemo/beginner/BeginnerModeManager;->INSTANCE:Lcom/codemao/nemo/beginner/BeginnerModeManager;

    invoke-virtual {v0}, Lcom/codemao/nemo/beginner/BeginnerModeManager;->needShowBeginner()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 49
    invoke-virtual {p0}, Lcom/codemao/nemo/beginner/BeginnerModeManager$isBeginner$2;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
