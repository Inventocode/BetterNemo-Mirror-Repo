.class final Lcom/google/common/base/CharMatcher$SingleWidth;
.super Lcom/google/common/base/CharMatcher$RangesMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleWidth"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher$SingleWidth;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1475
    new-instance v0, Lcom/google/common/base/CharMatcher$SingleWidth;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$SingleWidth;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$SingleWidth;->INSTANCE:Lcom/google/common/base/CharMatcher$SingleWidth;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const-string v0, "\u0000־א׳؀ݐ฀Ḁ℀ﭐﹰ｡"

    .line 1480
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "ӹ־ת״ۿݿ๿₯℺﷿\ufeffￜ"

    .line 1481
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "CharMatcher.singleWidth()"

    .line 1478
    invoke-direct {p0, v2, v0, v1}, Lcom/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    return-void
.end method
