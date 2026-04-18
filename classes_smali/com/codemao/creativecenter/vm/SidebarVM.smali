.class public Lcom/codemao/creativecenter/vm/SidebarVM;
.super Ljava/lang/Object;
.source "SidebarVM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;
    }
.end annotation


# instance fields
.field public blockCanRedo:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public blockCanUndo:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public canRedo:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public canRevert:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public currentStatus:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public isLandModel:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isLandscapeMode:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isPad:Z

.field private lastStatus:I

.field public mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;Z)V
    .registers 6

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->isPad:Z

    .line 23
    iput v0, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->lastStatus:I

    .line 37
    new-instance v1, Landroidx/databinding/ObservableField;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->isLandModel:Landroidx/databinding/ObservableField;

    .line 42
    new-instance v1, Landroidx/databinding/ObservableField;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    .line 45
    new-instance v0, Landroidx/databinding/ObservableField;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->canRevert:Landroidx/databinding/ObservableField;

    .line 48
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->canRedo:Landroidx/databinding/ObservableField;

    .line 50
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->blockCanRedo:Landroidx/databinding/ObservableField;

    .line 51
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->blockCanUndo:Landroidx/databinding/ObservableField;

    .line 53
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->isLandscapeMode:Landroidx/databinding/ObservableField;

    .line 27
    iput-object p1, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    .line 28
    iput-boolean p2, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->isPad:Z

    .line 29
    iget-object p1, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    new-instance p2, Lcom/codemao/creativecenter/vm/SidebarVM$1;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/vm/SidebarVM$1;-><init>(Lcom/codemao/creativecenter/vm/SidebarVM;)V

    invoke-virtual {p1, p2}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method


# virtual methods
.method public changeStatus(I)V
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 84
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_16

    if-gez p1, :cond_16

    .line 86
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->lastStatus:I

    .line 92
    :cond_16
    iget-object v0, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public getLastStatus()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->lastStatus:I

    return v0
.end method

.method public runOrStop()V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1f

    .line 118
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->lastStatus:I

    .line 119
    iget-object v0, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    goto :goto_2a

    .line 121
    :cond_1f
    iget-object v0, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    iget v1, p0, Lcom/codemao/creativecenter/vm/SidebarVM;->lastStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :goto_2a
    return-void
.end method
