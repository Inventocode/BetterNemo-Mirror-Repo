.class public abstract Lcom/efs/sdk/base/protocol/file/section/AbsSection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SEP_LINE_BREAK:Ljava/lang/String; = "linebreak"

.field public static final SEP_ORIGIN_LINE_BREAK:Ljava/lang/String; = "\n"


# instance fields
.field name:Ljava/lang/String;

.field sep:Ljava/lang/String;

.field type:Ljava/lang/String;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/efs/sdk/base/protocol/file/section/AbsSection;->name:Ljava/lang/String;

    const-string v1, "1.0"

    .line 31
    iput-object v1, p0, Lcom/efs/sdk/base/protocol/file/section/AbsSection;->version:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/efs/sdk/base/protocol/file/section/AbsSection;->sep:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/efs/sdk/base/protocol/file/section/AbsSection;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract changeToStr()Ljava/lang/String;
.end method

.method getDeclarationLine()Ljava/lang/String;
    .registers 4

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "section:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/efs/sdk/base/protocol/file/section/AbsSection;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/efs/sdk/base/protocol/file/section/AbsSection;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/efs/sdk/base/protocol/file/section/AbsSection;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/efs/sdk/base/protocol/file/section/AbsSection;->sep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setSep(Ljava/lang/String;)V
    .registers 3

    const-string v0, "\n"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, "linebreak"

    .line 44
    iput-object p1, p0, Lcom/efs/sdk/base/protocol/file/section/AbsSection;->sep:Ljava/lang/String;

    return-void

    .line 48
    :cond_d
    iput-object p1, p0, Lcom/efs/sdk/base/protocol/file/section/AbsSection;->sep:Ljava/lang/String;

    return-void
.end method
