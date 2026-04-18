.class public final Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;
.super Ljava/lang/Object;
.source "CheckPicturesSyncRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CheckPicturesRequestItem"
.end annotation


# instance fields
.field private final paths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final prefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;->this$0:Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;->prefix:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;->paths:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getPaths()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;->paths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$CheckPicturesRequestItem;->prefix:Ljava/lang/String;

    return-object v0
.end method
