.class Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop$1;
.super Ljava/lang/Object;
.source "LevelUpGuidePop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop$1;->this$0:Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 70
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop$1;->this$0:Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
