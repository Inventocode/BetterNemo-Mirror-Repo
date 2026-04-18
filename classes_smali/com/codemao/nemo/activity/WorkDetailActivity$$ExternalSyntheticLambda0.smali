.class public final synthetic Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/activity/WorkDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    check-cast p1, Lcom/ljwx/baseapp/response/DataResult;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->$r8$lambda$JADqmBcVhPzEUmo7_zK2xtV5DBM(Lcom/codemao/nemo/activity/WorkDetailActivity;Lcom/ljwx/baseapp/response/DataResult;)V

    return-void
.end method
