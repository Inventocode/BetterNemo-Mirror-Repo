.class public final synthetic Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;

.field public final synthetic f$1:Lcom/codemao/nemo/bean/SubjectInfo;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;Lcom/codemao/nemo/bean/SubjectInfo;ILjava/util/List;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/nemo/bean/SubjectInfo;

    iput p3, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;

    iget-object v1, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/nemo/bean/SubjectInfo;

    iget v2, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->$r8$lambda$p3oaKuEjGUq3GNvyGFCd47r4x6A(Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;Lcom/codemao/nemo/bean/SubjectInfo;ILjava/util/List;Landroid/view/View;)V

    return-void
.end method
