.class final Lcom/codemao/nemo/setting/pop/ChoseAvatarPop$mAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ChoseAvatarPop.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/giu/xzz/adapter/rv/RVBaseAdapter<",
        "Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $ctx:Landroid/content/Context;

.field final synthetic this$0:Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop$mAdapter$2;->$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop$mAdapter$2;->this$0:Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/giu/xzz/adapter/rv/RVBaseAdapter<",
            "Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v1, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop$mAdapter$2;->$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop$mAdapter$2;->this$0:Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;

    invoke-static {v2}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->access$getMAvatarDatas$p(Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop$mAdapter$2;->invoke()Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v0

    return-object v0
.end method
