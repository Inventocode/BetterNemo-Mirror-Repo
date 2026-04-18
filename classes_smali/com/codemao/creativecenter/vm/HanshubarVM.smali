.class public Lcom/codemao/creativecenter/vm/HanshubarVM;
.super Ljava/lang/Object;
.source "HanshubarVM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/vm/HanshubarVM$CallBack;
    }
.end annotation


# instance fields
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

.field public isEditHanshuModel:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mCallback:Lcom/codemao/creativecenter/vm/HanshubarVM$CallBack;


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/vm/HanshubarVM$CallBack;)V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroidx/databinding/ObservableField;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vm/HanshubarVM;->isEditHanshuModel:Landroidx/databinding/ObservableField;

    .line 16
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vm/HanshubarVM;->canRevert:Landroidx/databinding/ObservableField;

    .line 19
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vm/HanshubarVM;->canRedo:Landroidx/databinding/ObservableField;

    .line 22
    iput-object p1, p0, Lcom/codemao/creativecenter/vm/HanshubarVM;->mCallback:Lcom/codemao/creativecenter/vm/HanshubarVM$CallBack;

    return-void
.end method
