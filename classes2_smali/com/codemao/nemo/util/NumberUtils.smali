.class public final Lcom/codemao/nemo/util/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/util/NumberUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/util/NumberUtils;

    invoke-direct {v0}, Lcom/codemao/nemo/util/NumberUtils;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/NumberUtils;->INSTANCE:Lcom/codemao/nemo/util/NumberUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseInt(Ljava/lang/String;I)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_f

    goto :goto_13

    .line 16
    :cond_f
    :try_start_f
    invoke-static {p1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_13

    :catch_13
    :cond_13
    :goto_13
    return v0
.end method
