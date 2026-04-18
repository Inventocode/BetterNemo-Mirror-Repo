.class final Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UserAvatarChooseActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/setting/UserAvatarChooseActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mAdapter$2;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;
    .registers 4

    .line 94
    new-instance v0, Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;

    iget-object v1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mAdapter$2;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMDatas(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 93
    invoke-virtual {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mAdapter$2;->invoke()Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;

    move-result-object v0

    return-object v0
.end method
