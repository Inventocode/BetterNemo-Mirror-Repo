.class public final synthetic Lcom/codemao/nemo/fragment/CourseFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/codemao/nemo/fragment/CourseFragment$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/fragment/CourseFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/CourseFragment$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/codemao/nemo/fragment/CourseFragment$$ExternalSyntheticLambda2;->INSTANCE:Lcom/codemao/nemo/fragment/CourseFragment$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    check-cast p2, Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/CourseFragment;->$r8$lambda$lGRZ2uv38NQEnSJlAorbDN6QSYo(Lcom/codemao/nemo/bean/CourseV2ResponseItem;Lcom/codemao/nemo/bean/CourseV2ResponseItem;)I

    move-result p1

    return p1
.end method
