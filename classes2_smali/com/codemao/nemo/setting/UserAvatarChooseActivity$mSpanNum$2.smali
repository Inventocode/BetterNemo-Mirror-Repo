.class final Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mSpanNum$2;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mSpanNum$2;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mSpanNum$2;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$isPad$p(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    goto :goto_b

    :cond_a
    const/4 v0, 0x3

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 103
    invoke-virtual {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mSpanNum$2;->invoke()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
