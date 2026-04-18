.class Lcom/codemao/creativecenter/vm/SidebarVM$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "SidebarVM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vm/SidebarVM;-><init>(Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vm/SidebarVM;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vm/SidebarVM;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/codemao/creativecenter/vm/SidebarVM$1;->this$0:Lcom/codemao/creativecenter/vm/SidebarVM;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .registers 3

    .line 32
    iget-object p1, p0, Lcom/codemao/creativecenter/vm/SidebarVM$1;->this$0:Lcom/codemao/creativecenter/vm/SidebarVM;

    iget-object p2, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->statusChanged(I)V

    return-void
.end method
