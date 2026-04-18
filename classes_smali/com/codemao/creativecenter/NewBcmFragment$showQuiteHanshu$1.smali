.class final Lcom/codemao/creativecenter/NewBcmFragment$showQuiteHanshu$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->showQuiteHanshu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showQuiteHanshu$1;->$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 2155
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showQuiteHanshu$1;->$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
