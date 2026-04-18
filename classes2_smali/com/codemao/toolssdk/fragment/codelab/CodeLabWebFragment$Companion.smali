.class public final Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;
.super Ljava/lang/Object;
.source "CodeLabWebFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBUNDLE_KEY_FILE_URL()Ljava/lang/String;
    .registers 2

    .line 10
    invoke-static {}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;->access$getBUNDLE_KEY_FILE_URL$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBUNDLE_KEY_PROJECT_CODE()Ljava/lang/String;
    .registers 2

    .line 12
    invoke-static {}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;->access$getBUNDLE_KEY_PROJECT_CODE$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBUNDLE_KEY_PROJECT_ID()Ljava/lang/String;
    .registers 2

    .line 13
    invoke-static {}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;->access$getBUNDLE_KEY_PROJECT_ID$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBUNDLE_KEY_TEST_URL()Ljava/lang/String;
    .registers 2

    .line 11
    invoke-static {}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;->access$getBUNDLE_KEY_TEST_URL$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBUNDLE_KEY_TOKEN()Ljava/lang/String;
    .registers 2

    .line 9
    invoke-static {}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;->access$getBUNDLE_KEY_TOKEN$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;
    .registers 8

    .line 21
    new-instance v0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;

    invoke-direct {v0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;-><init>()V

    .line 22
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;->getBUNDLE_KEY_TOKEN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;->getBUNDLE_KEY_FILE_URL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;->getBUNDLE_KEY_PROJECT_CODE()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;->getBUNDLE_KEY_PROJECT_ID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final getTestInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;
    .registers 6

    .line 32
    new-instance v0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;

    invoke-direct {v0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;-><init>()V

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;->getBUNDLE_KEY_TOKEN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;->getBUNDLE_KEY_TEST_URL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
