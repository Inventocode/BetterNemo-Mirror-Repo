.class public final Lcom/codemao/nemo/bean/body/WorkRenameKnBody;
.super Ljava/lang/Object;
.source "WorkRenameKnBody.kt"


# instance fields
.field private final is_check_name:Z

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/bean/body/WorkRenameKnBody;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/codemao/nemo/bean/body/WorkRenameKnBody;->is_check_name:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 3
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/bean/body/WorkRenameKnBody;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/codemao/nemo/bean/body/WorkRenameKnBody;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final is_check_name()Z
    .registers 2

    .line 3
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/body/WorkRenameKnBody;->is_check_name:Z

    return v0
.end method
