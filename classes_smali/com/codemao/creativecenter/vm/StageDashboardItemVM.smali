.class public final Lcom/codemao/creativecenter/vm/StageDashboardItemVM;
.super Ljava/lang/Object;
.source "StageDashboardItemVM.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/vm/StageDashboardItemVM$Companion;
    }
.end annotation


# instance fields
.field private final centerPEnable:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final centerPSelected:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final centerPVisible:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private currentModel:I

.field private final fullscreenSelected:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final fullscreenVisible:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final gridEnable:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final gridSelected:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final gridVisible:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final revertSelected:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final revertVisible:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroidx/databinding/ObservableField;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->centerPSelected:Landroidx/databinding/ObservableField;

    .line 21
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->fullscreenSelected:Landroidx/databinding/ObservableField;

    .line 22
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->gridSelected:Landroidx/databinding/ObservableField;

    .line 23
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->revertSelected:Landroidx/databinding/ObservableField;

    .line 25
    new-instance v0, Landroidx/databinding/ObservableField;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->centerPVisible:Landroidx/databinding/ObservableField;

    .line 26
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v2}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->fullscreenVisible:Landroidx/databinding/ObservableField;

    .line 27
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v2}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->gridVisible:Landroidx/databinding/ObservableField;

    .line 28
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->revertVisible:Landroidx/databinding/ObservableField;

    .line 30
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v2}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->centerPEnable:Landroidx/databinding/ObservableField;

    .line 32
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v2}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->gridEnable:Landroidx/databinding/ObservableField;

    return-void
.end method


# virtual methods
.method public final getCenterPEnable()Landroidx/databinding/ObservableField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->centerPEnable:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public final getCenterPSelected()Landroidx/databinding/ObservableField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->centerPSelected:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public final getCenterPVisible()Landroidx/databinding/ObservableField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->centerPVisible:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public final getCurrentModel()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->currentModel:I

    return v0
.end method

.method public final getFullscreenSelected()Landroidx/databinding/ObservableField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->fullscreenSelected:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public final getFullscreenVisible()Landroidx/databinding/ObservableField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->fullscreenVisible:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public final getGridEnable()Landroidx/databinding/ObservableField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->gridEnable:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public final getGridSelected()Landroidx/databinding/ObservableField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->gridSelected:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public final getGridVisible()Landroidx/databinding/ObservableField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->gridVisible:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public final getRevertSelected()Landroidx/databinding/ObservableField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->revertSelected:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public final getRevertVisible()Landroidx/databinding/ObservableField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->revertVisible:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public final setCurrentModel(I)V
    .registers 2

    .line 34
    iput p1, p0, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->currentModel:I

    return-void
.end method
