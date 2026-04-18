.class Lcom/codemao/nemo/adapter/CardPagerAdapter$1;
.super Ljava/lang/Object;
.source "CardPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/CardPagerAdapter;->bind(Landroid/content/Context;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/CardPagerAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$item:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/CardPagerAdapter;Landroid/content/Context;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 5

    .line 104
    iput-object p1, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter$1;->this$0:Lcom/codemao/nemo/adapter/CardPagerAdapter;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter$1;->val$item:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput p4, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 107
    iget-object p1, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter$1;->this$0:Lcom/codemao/nemo/adapter/CardPagerAdapter;

    iget-object v0, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter$1;->val$item:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v2, p0, Lcom/codemao/nemo/adapter/CardPagerAdapter$1;->val$position:I

    invoke-static {p1, v0, v1, v2}, Lcom/codemao/nemo/adapter/CardPagerAdapter;->access$000(Lcom/codemao/nemo/adapter/CardPagerAdapter;Landroid/content/Context;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method
