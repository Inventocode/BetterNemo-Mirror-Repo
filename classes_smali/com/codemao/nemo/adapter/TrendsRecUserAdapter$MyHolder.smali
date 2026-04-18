.class Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TrendsRecUserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHolder"
.end annotation


# instance fields
.field card1:Landroid/view/View;

.field card2:Landroid/view/View;

.field ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

.field ivFrame:Lcom/codemao/nemo/view/AvatarFrameImagView;

.field ivSign:Lcom/codemao/nemo/view/UserSignImagView;

.field ivWorkCover1:Landroid/widget/ImageView;

.field ivWorkCover2:Landroid/widget/ImageView;

.field tvFollow:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;

.field tvPraiseNum1:Landroid/widget/TextView;

.field tvPraiseNum2:Landroid/widget/TextView;

.field tvTag:Landroid/widget/TextView;

.field tvViewNum1:Landroid/widget/TextView;

.field tvViewNum2:Landroid/widget/TextView;

.field tvWorkName1:Landroid/widget/TextView;

.field tvWorkName2:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;Landroid/view/View;)V
    .registers 6

    .line 156
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0854

    .line 157
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvFollow:Landroid/widget/TextView;

    const p1, 0x7f0a0363

    .line 158
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/AvatarFrameImagView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->ivFrame:Lcom/codemao/nemo/view/AvatarFrameImagView;

    const p1, 0x7f0a043c

    .line 159
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/RoundStrokeImageView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->ivAvatar:Lcom/codemao/nemo/view/RoundStrokeImageView;

    const p1, 0x7f0a08e9

    .line 160
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvTag:Landroid/widget/TextView;

    const p1, 0x7f0a0912

    .line 161
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvName:Landroid/widget/TextView;

    const p1, 0x7f0a08db

    .line 162
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/UserSignImagView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->ivSign:Lcom/codemao/nemo/view/UserSignImagView;

    const p1, 0x7f0a00fe

    .line 163
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->card1:Landroid/view/View;

    const p1, 0x7f0a00ff

    .line 164
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->card2:Landroid/view/View;

    .line 165
    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->card1:Landroid/view/View;

    const p2, 0x7f0a08aa

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvPraiseNum1:Landroid/widget/TextView;

    .line 166
    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->card1:Landroid/view/View;

    const v0, 0x7f0a091b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvViewNum1:Landroid/widget/TextView;

    .line 167
    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->card1:Landroid/view/View;

    const v1, 0x7f0a0447

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->ivWorkCover1:Landroid/widget/ImageView;

    .line 168
    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->card1:Landroid/view/View;

    const v2, 0x7f0a0923

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvWorkName1:Landroid/widget/TextView;

    .line 169
    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->card2:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvPraiseNum2:Landroid/widget/TextView;

    .line 170
    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->card2:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvViewNum2:Landroid/widget/TextView;

    .line 171
    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->card2:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->ivWorkCover2:Landroid/widget/ImageView;

    .line 172
    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->card2:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;->tvWorkName2:Landroid/widget/TextView;

    return-void
.end method
