.class Lcom/codemao/creativestore/utils/CreativeGsonUtil$GsonHolder;
.super Ljava/lang/Object;
.source "CreativeGsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativestore/utils/CreativeGsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GsonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/codemao/creativestore/utils/CreativeGsonUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;-><init>(Lcom/codemao/creativestore/utils/CreativeGsonUtil$1;)V

    sput-object v0, Lcom/codemao/creativestore/utils/CreativeGsonUtil$GsonHolder;->INSTANCE:Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    return-void
.end method

.method static synthetic access$100()Lcom/codemao/creativestore/utils/CreativeGsonUtil;
    .registers 1

    .line 16
    sget-object v0, Lcom/codemao/creativestore/utils/CreativeGsonUtil$GsonHolder;->INSTANCE:Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    return-object v0
.end method
