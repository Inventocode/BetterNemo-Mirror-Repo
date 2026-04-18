.class public final Lcom/lxj/easyadapter/EasyAdapter$1;
.super Ljava/lang/Object;
.source "EasyAdapter.kt"

# interfaces
.implements Lcom/lxj/easyadapter/ItemDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/easyadapter/EasyAdapter;-><init>(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lxj/easyadapter/ItemDelegate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/easyadapter/EasyAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lxj/easyadapter/EasyAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lxj/easyadapter/EasyAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lxj/easyadapter/EasyAdapter<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lxj/easyadapter/EasyAdapter$1;->this$0:Lcom/lxj/easyadapter/EasyAdapter;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lcom/lxj/easyadapter/ViewHolder;Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lxj/easyadapter/ViewHolder;",
            "TT;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/lxj/easyadapter/EasyAdapter$1;->this$0:Lcom/lxj/easyadapter/EasyAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lxj/easyadapter/EasyAdapter;->bind(Lcom/lxj/easyadapter/ViewHolder;Ljava/lang/Object;I)V

    return-void
.end method

.method public bindWithPayloads(Lcom/lxj/easyadapter/ViewHolder;Ljava/lang/Object;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lxj/easyadapter/ViewHolder;",
            "TT;I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/lxj/easyadapter/EasyAdapter$1;->this$0:Lcom/lxj/easyadapter/EasyAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lxj/easyadapter/EasyAdapter;->bindWithPayloads(Lcom/lxj/easyadapter/ViewHolder;Ljava/lang/Object;ILjava/util/List;)V

    return-void
.end method

.method public getLayoutId()I
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/lxj/easyadapter/EasyAdapter$1;->this$0:Lcom/lxj/easyadapter/EasyAdapter;

    invoke-virtual {v0}, Lcom/lxj/easyadapter/EasyAdapter;->getMLayoutId()I

    move-result v0

    return v0
.end method

.method public isThisType(Ljava/lang/Object;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
