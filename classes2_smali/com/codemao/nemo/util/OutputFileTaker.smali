.class final Lcom/codemao/nemo/util/OutputFileTaker;
.super Ljava/lang/Object;
.source "SaveImageUtils.kt"


# instance fields
.field private file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/util/OutputFileTaker;->file:Ljava/io/File;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 21
    :cond_5
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/OutputFileTaker;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final getFile()Ljava/io/File;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/nemo/util/OutputFileTaker;->file:Ljava/io/File;

    return-object v0
.end method

.method public final setFile(Ljava/io/File;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/nemo/util/OutputFileTaker;->file:Ljava/io/File;

    return-void
.end method
