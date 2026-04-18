.class public final Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment$Companion;
.super Ljava/lang/Object;
.source "CodeLabVideoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;)Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;
    .registers 5

    .line 15
    new-instance v0, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;

    invoke-direct {v0}, Lcom/codemao/toolssdk/fragment/codelab/video/CodeLabVideoFragment;-><init>()V

    .line 16
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 17
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 18
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
