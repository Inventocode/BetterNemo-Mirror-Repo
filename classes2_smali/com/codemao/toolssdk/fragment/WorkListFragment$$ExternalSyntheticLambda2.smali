.class public final synthetic Lcom/codemao/toolssdk/fragment/WorkListFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/codemao/toolssdk/fragment/WorkListFragment;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/codemao/toolssdk/fragment/WorkListFragment;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment$$ExternalSyntheticLambda2;->f$1:Lcom/codemao/toolssdk/fragment/WorkListFragment;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/WorkListFragment$$ExternalSyntheticLambda2;->f$1:Lcom/codemao/toolssdk/fragment/WorkListFragment;

    invoke-static {v0, v1, p1, p2}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->$r8$lambda$XvJufEPsf3EKwhpx_b1Sy1RRYNA(Ljava/util/List;Lcom/codemao/toolssdk/fragment/WorkListFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
