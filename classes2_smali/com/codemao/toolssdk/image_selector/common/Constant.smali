.class public Lcom/codemao/toolssdk/image_selector/common/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static imageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    return-void
.end method
