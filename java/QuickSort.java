
public class QuickSort {
	
	public static int Interchange(int[] a,int i,int j){
		int temp;
		if(a[i]>a[j]){
			temp=a[j];
			a[j]=a[i];
			a[i]=temp;
		}
		return 0;
	}
	

	public static int Partition(int[] a,int piv,int last){
		int pivot=a[piv];
		int i=piv+1;
		int  j=last-1;
		
		while(i<j){
			
			while(a[i]<=pivot){
				i=i+1;
			}
				
			while(a[j]>=pivot){	
				j=j-1;
			}
			
				if(i<j)
					Interchange(a,i,j);
		}
		
		a[piv]=a[j];
		a[j]=pivot;
		
		return j;
	}
	
	
	public static int Qsort(int[] a,int p,int q){
		
		if(p<q){
			int piv =Partition(a,p,q+1);
			
			Qsort(a,p,piv-1);
			Qsort(a,piv+1,q);	
		}
		return 1;
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
int[] arr={65,70,75,80,85,60,55,50,45};
int i;
for(i=0;i<(arr.length);i++)
	System.out.print(arr[i]+"\t");

Qsort(arr,1,8);

for(i=0;i<(arr.length);i++)
System.out.print(+arr[i]+"\n");
	}

}
