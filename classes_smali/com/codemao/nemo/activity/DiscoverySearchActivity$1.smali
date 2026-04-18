.class Lcom/codemao/nemo/activity/DiscoverySearchActivity$1;
.super Ljava/lang/Object;
.source "DiscoverySearchActivity.java"

# interfaces
.implements Lcom/codemao/nemo/activity/DiscoverySearchActivity$SearchFragmentCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/DiscoverySearchActivity;->initFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/DiscoverySearchActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/DiscoverySearchActivity;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity$1;->this$0:Lcom/codemao/nemo/activity/DiscoverySearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideInput()V
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity$1;->this$0:Lcom/codemao/nemo/activity/DiscoverySearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    return-void
.end method
