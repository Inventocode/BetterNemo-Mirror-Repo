.class public final Lcom/codemao/toolssdk/ljwx/web/block/variable/VariableInputTabLayout;
.super Ljava/lang/Object;
.source "VariableInputTabLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVariableInputTabLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VariableInputTabLayout.kt\ncom/codemao/toolssdk/ljwx/web/block/variable/VariableInputTabLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n1851#2,2:38\n*S KotlinDebug\n*F\n+ 1 VariableInputTabLayout.kt\ncom/codemao/toolssdk/ljwx/web/block/variable/VariableInputTabLayout\n*L\n13#1:38,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/ljwx/web/block/variable/VariableInputTabLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/ljwx/web/block/variable/VariableInputTabLayout;

    invoke-direct {v0}, Lcom/codemao/toolssdk/ljwx/web/block/variable/VariableInputTabLayout;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/ljwx/web/block/variable/VariableInputTabLayout;->INSTANCE:Lcom/codemao/toolssdk/ljwx/web/block/variable/VariableInputTabLayout;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createTabItem(Lcom/google/android/material/tabs/TabLayout;Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;)Lcom/google/android/material/tabs/TabLayout$Tab;
    .registers 6

    .line 21
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 20
    invoke-static {v0, p1, v1}, Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;

    move-result-object v0

    const-string v1, "inflate(\n            Lay…          false\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;->title:Landroid/widget/TextView;

    .line 26
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;->icon:Landroid/widget/ImageView;

    .line 32
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;->getIcon()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 34
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {v0}, Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    const-string p2, "tabLayout.newTab().setCustomView(tabView.root)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final initTabLayout(Lcom/google/android/material/tabs/TabLayout;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/tabs/TabLayout;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tabLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1851
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;

    .line 14
    sget-object v1, Lcom/codemao/toolssdk/ljwx/web/block/variable/VariableInputTabLayout;->INSTANCE:Lcom/codemao/toolssdk/ljwx/web/block/variable/VariableInputTabLayout;

    invoke-direct {v1, p1, v0}, Lcom/codemao/toolssdk/ljwx/web/block/variable/VariableInputTabLayout;->createTabItem(Lcom/google/android/material/tabs/TabLayout;Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_e

    :cond_24
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_2e
    return-void
.end method
