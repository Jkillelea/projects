trait Grapn<N, E> {
    fn has_edge(&self, &N, &N) -> bool;
    fn edges(&self) -> Vec<E>;
} // awkward since now we need to handle generic types N and E in our code
fn distance<N, E, G: Graph<N, E>>(graph: &G, start: &N, end: &N) -> u32; // blah

trait Graph {
    type N;
    type E;

    fn has_edge(&self, &Self::N, &Self::E) -> bool;
    fn edges(&self, &Self::N) -> Vec<Self::E>;
}
fn distance<G: Graph>(graph: &G, start: &G::N, end: &G::N) -> u32; // nicer
