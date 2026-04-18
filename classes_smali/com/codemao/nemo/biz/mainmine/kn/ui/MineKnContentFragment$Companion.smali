.class public final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$Companion;
.super Ljava/lang/Object;
.source "MineKnContentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getInstance$default(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$Companion;ZZILjava/lang/Object;)Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 77
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$Companion;->getInstance(ZZ)Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getInstance(ZZ)Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;
    .registers 6

    .line 78
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;-><init>()V

    .line 79
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "published"

    .line 80
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "searchMode"

    .line 81
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
