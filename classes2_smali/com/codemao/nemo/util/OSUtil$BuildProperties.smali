.class final Lcom/codemao/nemo/util/OSUtil$BuildProperties;
.super Ljava/lang/Object;
.source "OSUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/util/OSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BuildProperties"
.end annotation


# instance fields
.field private final properties:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/util/OSUtil$BuildProperties;->properties:Ljava/util/Properties;

    .line 162
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "build.prop"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    return-void
.end method

.method public static newInstance()Lcom/codemao/nemo/util/OSUtil$BuildProperties;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    new-instance v0, Lcom/codemao/nemo/util/OSUtil$BuildProperties;

    invoke-direct {v0}, Lcom/codemao/nemo/util/OSUtil$BuildProperties;-><init>()V

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/codemao/nemo/util/OSUtil$BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/codemao/nemo/util/OSUtil$BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
