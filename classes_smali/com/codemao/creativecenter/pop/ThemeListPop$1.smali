.class Lcom/codemao/creativecenter/pop/ThemeListPop$1;
.super Ljava/lang/Object;
.source "ThemeListPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/ThemeListPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/ThemeListPop;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$1;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 90
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$1;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
