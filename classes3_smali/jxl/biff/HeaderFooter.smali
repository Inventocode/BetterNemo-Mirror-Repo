.class public abstract Ljxl/biff/HeaderFooter;
.super Ljava/lang/Object;
.source "HeaderFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/HeaderFooter$Contents;
    }
.end annotation


# instance fields
.field private centre:Ljxl/biff/HeaderFooter$Contents;

.field private left:Ljxl/biff/HeaderFooter$Contents;

.field private right:Ljxl/biff/HeaderFooter$Contents;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Ljxl/biff/HeaderFooter;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    .line 474
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    .line 475
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 8

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a8

    .line 496
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_a8

    :cond_d
    const-string v0, "&L"

    .line 504
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "&R"

    .line 505
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "&C"

    .line 506
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2e

    if-ne v1, v3, :cond_2e

    if-ne v2, v3, :cond_2e

    .line 511
    invoke-virtual {p0, p1}, Ljxl/biff/HeaderFooter;->createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    goto/16 :goto_89

    :cond_2e
    if-eq v0, v3, :cond_4c

    .line 519
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v0, :cond_3d

    if-le v1, v0, :cond_3b

    if-le v2, v1, :cond_3b

    goto :goto_3f

    :cond_3b
    move v4, v2

    goto :goto_40

    :cond_3d
    if-le v1, v0, :cond_40

    :goto_3f
    move v4, v1

    :cond_40
    :goto_40
    add-int/lit8 v5, v0, 0x2

    .line 550
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljxl/biff/HeaderFooter;->createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v4

    iput-object v4, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    :cond_4c
    if-eq v1, v3, :cond_6a

    .line 557
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v1, :cond_5b

    if-le v0, v1, :cond_59

    if-le v2, v0, :cond_59

    goto :goto_5d

    :cond_59
    move v4, v2

    goto :goto_5e

    :cond_5b
    if-le v0, v1, :cond_5e

    :goto_5d
    move v4, v0

    :cond_5e
    :goto_5e
    add-int/lit8 v5, v1, 0x2

    .line 585
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljxl/biff/HeaderFooter;->createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v4

    iput-object v4, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    :cond_6a
    if-eq v2, v3, :cond_89

    .line 592
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v2, :cond_79

    if-le v0, v2, :cond_77

    if-le v1, v0, :cond_77

    goto :goto_7d

    :cond_77
    move v0, v1

    goto :goto_7d

    :cond_79
    if-le v0, v2, :cond_7c

    goto :goto_7d

    :cond_7c
    move v0, v3

    :goto_7d
    add-int/lit8 v2, v2, 0x2

    .line 620
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljxl/biff/HeaderFooter;->createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    .line 625
    :cond_89
    :goto_89
    iget-object p1, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    if-nez p1, :cond_93

    .line 627
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    .line 630
    :cond_93
    iget-object p1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    if-nez p1, :cond_9d

    .line 632
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    .line 635
    :cond_9d
    iget-object p1, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    if-nez p1, :cond_a7

    .line 637
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    :cond_a7
    return-void

    .line 498
    :cond_a8
    :goto_a8
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    .line 499
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    .line 500
    invoke-virtual {p0}, Ljxl/biff/HeaderFooter;->createContents()Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/HeaderFooter;)V
    .registers 3

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iget-object v0, p1, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {p0, v0}, Ljxl/biff/HeaderFooter;->createContents(Ljxl/biff/HeaderFooter$Contents;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    .line 486
    iget-object v0, p1, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {p0, v0}, Ljxl/biff/HeaderFooter;->createContents(Ljxl/biff/HeaderFooter$Contents;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    .line 487
    iget-object p1, p1, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {p0, p1}, Ljxl/biff/HeaderFooter;->createContents(Ljxl/biff/HeaderFooter$Contents;)Ljxl/biff/HeaderFooter$Contents;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    return-void
.end method


# virtual methods
.method protected abstract createContents()Ljxl/biff/HeaderFooter$Contents;
.end method

.method protected abstract createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;
.end method

.method protected abstract createContents(Ljxl/biff/HeaderFooter$Contents;)Ljxl/biff/HeaderFooter$Contents;
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 649
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 650
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->empty()Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "&L"

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 653
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->left:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 656
    :cond_1b
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->empty()Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "&C"

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->centre:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 662
    :cond_31
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->empty()Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "&R"

    .line 664
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 665
    iget-object v1, p0, Ljxl/biff/HeaderFooter;->right:Ljxl/biff/HeaderFooter$Contents;

    invoke-virtual {v1}, Ljxl/biff/HeaderFooter$Contents;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 668
    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
