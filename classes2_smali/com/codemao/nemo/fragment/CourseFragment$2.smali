.class Lcom/codemao/nemo/fragment/CourseFragment$2;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "CourseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CourseFragment;->initLayoutManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CourseFragment;)V
    .registers 2

    .line 208
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
