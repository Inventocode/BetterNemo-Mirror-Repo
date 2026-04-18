.class public final Lcom/codemao/nemo/util/text/NemoTextUtils;
.super Ljava/lang/Object;
.source "NemoTextUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/util/text/NemoTextUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/util/text/NemoTextUtils;

    invoke-direct {v0}, Lcom/codemao/nemo/util/text/NemoTextUtils;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/text/NemoTextUtils;->INSTANCE:Lcom/codemao/nemo/util/text/NemoTextUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fetchDimenTxtSize(I)I
    .registers 3

    .line 28
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->px2dp(F)I

    move-result p1

    return p1
.end method
