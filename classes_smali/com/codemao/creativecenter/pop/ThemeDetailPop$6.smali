.class Lcom/codemao/creativecenter/pop/ThemeDetailPop$6;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "ThemeDetailPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/ThemeDetailPop;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$6;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .registers 3

    .line 227
    sget p1, Lcom/codemao/creativecenter/BR;->progress:I

    if-ne p2, p1, :cond_18

    .line 228
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$6;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$600(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$6;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {p2}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$200(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getProgress()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->setProgress(I)V

    goto :goto_2f

    .line 229
    :cond_18
    sget p1, Lcom/codemao/creativecenter/BR;->status:I

    if-ne p2, p1, :cond_2f

    .line 230
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$6;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$600(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$6;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {p2}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$200(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getStatus()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->changeStatus(I)V

    :cond_2f
    :goto_2f
    return-void
.end method
