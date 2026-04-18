.class public final synthetic Lcom/lxj/easyadapter/MultiItemTypeAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/lxj/easyadapter/MultiItemTypeAdapter;

.field public final synthetic f$1:Lcom/lxj/easyadapter/ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/lxj/easyadapter/MultiItemTypeAdapter;Lcom/lxj/easyadapter/ViewHolder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/lxj/easyadapter/MultiItemTypeAdapter;

    iput-object p2, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/lxj/easyadapter/ViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 4

    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/lxj/easyadapter/MultiItemTypeAdapter;

    iget-object v1, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/lxj/easyadapter/ViewHolder;

    invoke-static {v0, v1, p1}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->$r8$lambda$rGweOoWsYfZsJOSyWFVMkam7slk(Lcom/lxj/easyadapter/MultiItemTypeAdapter;Lcom/lxj/easyadapter/ViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
